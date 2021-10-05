import styled from "styled-components"

export const Navbar = styled.nav`
  background:#666aff;
  height: 5.0em;
  display: flex;
  align-items: center;
  justify-content: center;
  a {
    color: white;
    text-decoration: none;
    padding: 1em;
    transition: background 0.3s 0s ease-in-out;
    &:hover {
      background: #992b1d;
    }
  }
`;